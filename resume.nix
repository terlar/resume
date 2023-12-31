{
  "$schema" = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json";

  basics = {
    name = "Terje Larsen";
    label = "Senior Software Engineer";
    email = "terlar@gmail.com";
    url = "https://terlar.github.io";
    summary = ''
      Programming and problem solving is one of my great passions in life, if I am presented with a problem I will eagerly put my full focus on the problem until a solution is reached.

      I have 15+ years of professional experience developing large scale microservice ecosystems with the past 8 years shifting focus towards the DevOps movement and enabling engineers to be more productive.

      Most recently I have used Nix, Golang, Python and TypeScript, however I don't see a problem with developing in any other language, the motto is: use the best tool available.
    '';
    location = {
      city = "Stockholm";
      countryCode = "SE";
      region = "Stockholm";
    };
    profiles = [
      {
        network = "LinkedIn";
        username = "terlar";
        url = "https://linkedin.com/in/terlar/";
      }
      {
        network = "GitHub";
        username = "terlar";
        url = "https://github.com/terlar";
      }
    ];
  };

  work = [
    {
      name = "SEB";
      location = "Stockholm";
      description = "The largest Swedish bank";
      position = "Senior DevOps Engineer";
      url = "https://sebgroup.com";
      startDate = "2023-05";
      summary = "";
      highlights = [
        "Prepared for cloud move by providing a multi-tenant Kubernetes platform using Google Kubernetes Engine Enterprise. This includes IaC via Terraform using Terraservices pattern and generating CI/CD pipelines in GitLab."
        "Work with the OpenShift Kubernetes on-prem solution, write custom CRDs and handle logs via Vector."
        "Participate in a workgroup trying to get Linux developer machines."
        "Generate custom WSL images using NixOS to aid developers with their development tooling needs."
      ];
    }

    {
      name = "Klarna";
      location = "Stockholm";
      description = "Fintech company";
      position = "Senior DevOps Engineer";
      url = "https://klarna.com";
      startDate = "2019-01";
      endDate = "2023-05";
      summary = "";
      highlights = [
        "Build the next generation infrastructure delivery system for the company."
        "Implement and scale a CI/CD pipeline to support deployments for a mono-repo of 100+ services (across multiple regions/environments). Reducing time to delivery by 60%."
        "Create tooling and infrastructure and improve the user experience of a mono-repo platform."
        "Teach, document and provide expertise for developers of a mono-repo platform."
        "Implement a service definition system for reproducible builds/deployments (Nix/Terraform)."
        "Reduce technical debt and deprecate outdated solutions."
        "Automate developer machine/environment setup (Nix)."
        "Implement partial branch deployments (only deploy what has changed since you created your branch)"
        "Implement dry-run of staging/production deploy on branches to discover permission/policy issues ahead of deploy."
        "Develop a backend for a communications portal using event-driven and serverless technologies. (AWS Lambda/API GW/DynamoDB Streams/TypeScript)"
        "Implement granular testing strategy at all levels."
        "Implement infrastructure as code and CI/CD (Terraform/Jenkins)"
      ];
    }

    {
      name = "Mirado Consulting";
      location = "Stockholm";
      description = "Smaller consultancy company with focus on talent";
      position = "Consultant";
      url = "https://www.mirado.com";
      startDate = "2018-02";
      endDate = "2019-01";
      summary = ''
      '';
      highlights = [
        "Migrate services into Docker containers."
        "Set up CI/CD for services and optimize developer tools and workflow."
        "Migrate and write new services (Ruby, TypeScript)."
        "Implement monitoring and alerting."
      ];
    }

    {
      name = "SpeedLedger";
      location = "Gothenburg";
      description = "Online bookkeeping services (part of VISMA)";
      position = "DevOps Engineer";
      url = "https://www.speedledger.se";
      startDate = "2017-03";
      endDate = "2018-02";
      summary = ''
      '';
      highlights = [
        "Setup alerting and monitoring system."
        "Maintain and improve the CI-pipeline."
        "Build a proxy/router for service discovery and load balancing."
        "Infrastucture management through AWS CloudFormation."
        "Setup automated backup solutions to AWS S3."
        "Configuration management with Ansible."
        "Setup fluentd log pipeline (EFK)."
      ];
    }

    {
      name = "Saltside";
      location = "Gothenburg";
      description = "Online bookkeeping services (part of VISMA)";
      position = "Software Engineer / Site Reliability Engineer";
      url = "https://saltside.se";
      startDate = "2011-11";
      endDate = "2017-03";
      summary = ''
      '';
      highlights = [
        "Site reliability engineering."
        "Daily work with containers, continuous delivery and automated testing."
        "Create tools and utilities that makes the work more efficient."
        "Running a distributed system across four markets with millions of users."
        "Deploy service to orchestrate different deploys from various clients (Slack, CLI, Web)."
        "Configuration management with Ansible.- Site reliability engineering. - Daily work with containers, continuous delivery and automated testing. - Create tools and utilities that makes the work more efficient. - Running a distributed system across four markets with millions of users. - Deploy service to orchestrate different deploys from various clients (Slack, CLI, Web). - Configuration management with Ansible."
        "Main contributor of the core API and backend services."
        "Designed and implemented API:s both using JSON and Thrift."
        "Worked in a small team to rewrite the system to a service oriented architecture."
        "Lead developer for the mobile web application."
        "Lead developer for the backend platform and API."
        "Extracted the mobile web application from the monolith increasing the ability to deliver new features."
        "Worked in a small team to deliver a monolithic classifieds site."
      ];
    }

    {
      name = "Webbhuset AB";
      location = "Gothenburg";
      description = "E-commerce development";
      position = "Software Engineer";
      url = "https://webbhuset.se";
      startDate = "2009-10";
      endDate = "2011-11";
      summary = ''
        Started as a Software Engineer and when getting a hang of the ropes coached several new hires as well as driving the techincal solutions. Worked with various e-commerce adaptations for company customers.
        Lead developer of Magento-Navision bridge.
      '';
      highlights = [
        "Developed modules for the e-commerce system Magento."
        "Built bridges between Magento and several ERP-systems (such as Navision)."
        "Worked with markup and CSS."
      ];
    }

    {
      name = "Argonova Systems";
      location = "Borås";
      description = "CMS/E-commerce development";
      position = "Full-stack Developer";
      url = "https://argonova.se";
      startDate = "2007-06";
      endDate = "2009-10";
      summary = ''
        Lead developer of the e-commerce platform and content management system. Also utilized this platform to deliver customized websites to 10+ customers including all parts of full-stack development.
      '';
      highlights = [
        "Developed an e-commerce platform which superseded the previous."
        "Developed several iterations of content management systems."
        "Created tools and workflow to optimize our development process."
        "Advocated web-standards and guidelines for accessibility."
        "Created a CSS-framework that we used to create sites quicker."
      ];
    }

    {
      name = "Firma Terje Larsen";
      location = "Gothenburg";
      description = "Self-employed";
      position = "Full-stack Developer";
      startDate = "2010-06";
      endDate = "2015-04";
      summary = ''
        Developed various web-software on request during my free-time.
      '';
      highlights = [
        "Developing modules and adjusting templates to increase sales in a web shop built with Magento."
        "Full-stack development of simpler company websites."
        "Customization and feature development for WordPress."
      ];
    }
  ];

  education = [
    {
      institution = "John Bauergymnasiet";
      area = "Information Technology";
      studyType = "High School";
      startDate = "2004";
      endDate = "2007";
      courses = [
        "English"
        "Linux"
        "Mathematics"
        "Networking"
        "Programming"
      ];
    }
  ];

  awards = [
    {
      title = "Best IT student of the year";
      date = "2005";
      awarder = "John Bauergymnasiet";
    }
    {
      title = "Best grades of the year (Male)";
      date = "2007";
      awarder = "John Bauergymnasiet";
    }
    {
      title = "Project Work of the year";
      date = "2007";
      awarder = "John Bauergymnasiet";
    }
  ];

  skills = [
    {
      name = "Systems Programming";
      level = "Master";
      keywords = [
        "Golang"
        "Nix"
        "Python"
        "Shell (POSIX)"
        "TypeScript"
      ];
    }
    {
      name = "CI/CD";
      level = "Master";
      keywords = [
        "Buildkite"
        "GitHub Actions"
        "GitLab"
        "Jenkins"
      ];
    }
    {
      name = "Infrastructure as Code";
      level = "Master";
      keywords = [
        "Nix"
        "Terraform"
      ];
    }
    {
      name = "Cloud Platforms";
      level = "Master";
      keywords = [
        "Amazon Web Services"
        "Google Cloud Platform"
      ];
    }
    {
      name = "Operating systems";
      level = "Master";
      keywords = [
        "GNU/Linux"
      ];
    }
  ];

  languages = [
    {
      language = "English";
      fluency = "Fluent";
    }
    {
      language = "Swedish";
      fluency = "Native speaker";
    }
    {
      language = "German";
      fluency = "Beginner";
    }
    {
      language = "Chinese";
      fluency = "Beginner";
    }
  ];

  interests = [
    {
      name = "Free software";
      keywords = [
        "Linux"
        "NixOS"
        "Emacs"
      ];
    }
    {
      name = "Health and fitness";
      keywords = [
        "Meditation"
        "Hiking"
        "Cycling"
      ];
    }
  ];

  meta = {
    canonical = "https://raw.githubusercontent.com/jsonresume/resume-schema/master/schema.json";
    version = "v1.0.0";
    lastModified = "2017-12-24T15:53:00";
  };
}
