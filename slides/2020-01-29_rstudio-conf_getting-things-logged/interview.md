## In 60 seconds or less, please recap the so-what of your rstudio::conf talk. Think of this as an Executive Summary of your talk. 

R was referred to as a programming language written by statisticians for statisticians -- with a heavy focus on interactive use, for example writing R commands in the console while doing ad-hoc data analysis. This might become a reproducible R script at some point, but the development and debugging still happens in an interactive way.

This works great, and for example RStudio IDE or Emacs ESS provides really support for interactive use, but problems arise when that cleaned up, elegant and reproducible R script is to be rerun later (maybe in an automated way), and there are unexpected results or errors.

In such case, instead using a development environment to try to reproduce the problem for debugging, it's much more efficient to look up the logs in production -- for example what actual SQL query was run with the dynamic parameters, how many rows were returned, how many rows were dropped in a transformation step of the script.

My talk introduces a flexible tool to do logging in R. / helping with that.

## What do you see as the greatest challenge in building data science products (dashboards, reports, data models, interactive web applications, APIs, etc)?

    1. What is the challenge?
    2. What solution would you recommend and why?

Oh, this is a great questions, and I think becoming more and more important as the R developers are now indeed empowered to ship actual products -- compared to the past, when R users were working in isolated environments mostly coding ad-hoc data analysis scripts in an interactive console.

So with an actual data science product, the user of the application is often different from the developer, which is something new in the R world. I mean R package developers already had end-users, so they had to think about APIs, non-breaking changes, writing good documention etc -- but these skills are now required by other R users as well, for example those writing Shiny applications.

This change also means that we are opening up the data science infrastructure to non-data scientists, for example providing access to datebases via an interface or having the Shiny server run in a prod environment that has some security risks, so this puts a lot of responsibility on the R developers and the supporting devops teams as well.

To help mitigate the security risks, we need better tools (like not doing string interpolation of SQL to be passed to databases) and training as well.

## What do you see as the greatest challenge in sharing data science products, so that they deliver wider value to your organization? 

    1. What is the challenge?
    2. What solution would you recommend and why?

Just like in the previous question, I think it's important to point out that the users and developers of the data sciencets products are not the same any more, which raises not only security issues, but a lot more as well, for example understanding and improving the user experience.

I think we can learn a lot from other programming languages, frameworks, and general guidelines on how developers can interact with the end-users to get feedback -- first, we need to better understand the users requirements and needs, then we should monitor how they use our product, for example by relying on the logging package I'm presenting at the conference :) 
