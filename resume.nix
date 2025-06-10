{
  "$schema" = "https://raw.githubusercontent.com/jsonresume/resume-schema/v1.0.0/schema.json";

  basics = {
    name = "Terje Larsen";
    label = "Senior Software Engineer";
    image = "./photo.png";
    email = "terlar@gmail.com";
    url = "https://terlar.github.io";
    summary = ''
      Results-driven Senior Software Engineer with 15+ years of software development experience, including expertise with developing large-scale microservice ecosystems, data structures, algorithms and functional programming. Over the past 8 years, I've focused on enhancing developer velocity through tools and automation.

      Proficient in Nix, Golang, Python, TypeScript, Ruby and Java, with additional exposure to Elixir, Rust, Clojure and Haskell outside of professional contexts.
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
        "Lead the peparation for cloud migration by implementing a multi-tenant Kubernetes platform using Google Kubernetes Engine Enterprise."
        "Apply Infrastucture as Code (IaC) principles through Terraform, following the Terraservices pattern, and generate CI/CD pipelines in GitLab and GitHub (Nix)."
        "Production release automation, orchestrated with GitLab/JIRA/Vertex AI and Teams Power Automate."
        "CI/CD tooling developed with Golang."
        "Fully automated dependency updates using Renovate and bot accounts."
        "Work with the OpenShift Kubernetes on-prem solution, write custom CRDs and handle logs via Vector."
        "Collaborate on integrating Linux developer machines."
        "Develop custom WSL images using NixOS to enhance developer tooling and streamline the development process."
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
        "Spearheaded the creation of a next-generation infrastructure delivery system demonstrating leadership and forward-thinking in technology adoption."
        "Implemented and scaled a CI/CD pipeline for a mono-repo of 100+ services, reducing time to delivery by 60%."
        "Created tooling and infrastructure and improve the user experience of a mono-repo platform."
        "Provided expertise and documentation for developers on a mono-repo platform, showcasing leadership and coaching abilities."
        "Implemented a service definition system for reproducible builds/deployments using Nix and Terraform."
        "Reduced technical debt and deprecate outdated solutions."
        "Automated developer machine/environment setup using Nix."
        "Implemented partial branch deployments (only deploy what has changed since you created your branch)"
        "Implemented dry-run of staging/production deploy on branches to discover permission/policy issues ahead of deploy."
        "Engineered the backend for a communication portal utilizing event-driven and serverless technologies, leveraging AWS Lambda, API Gateway, DynamoDB Streams, and TypeScript to ensure seamless and scalable operations."
        "Implemented granular testing strategy at all levels."
        "Implemented infrastructure as code and CI/CD using Terraform and Jenkins."
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
        "Led the migration of services into Docker containers, showcasing adaptability to modern technologies."
        "Set up CI/CD for services, optimized developer tools, and workflows."
        "Migrated and developed services in Ruby and TypeScript, demonstrating a diverse skill set."
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
        "Implemented alerting and monitoring systems, ensuring the reliability and performance of services."
        "Maintained and improved the CI pipeline, contributing to a streamlined development process."
        "Developed a proxy/router for service discovery and load balancing, enhancing system efficiency."
        "Managed infrastructure through AWS CloudFormation, ensuring a robust and scalable environment."
        "Set up automated backup solutions to AWS S3, prioritizing data security."
        "Utilized Ansible for configuration management."
        "Established a fluentd log pipeline (EFK), contributing to effective log management."
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
      highlights = [
        "Engaged in site reliability engineering, focusing on continuous delivery and automated testing."
        "Developed tools and utilities to enhance operational efficiency."
        "Orchestrated the deployment of a distributed system across four markets with millions of users."
        "Implemented a service to coordinate different deploys using various clients (Slack, CLI, Web)."
        "Led the design and implementation of core API and backend services."
        "Designed and implemented APIs using JSON and Thrift."
        "Contributed to the rewriting of the system into a service-oriented architecture."
        "Served as the lead developer for the mobile web application and backend platform/API."
        "Successfully extracted the mobile web application from a monolith, improving feature delivery capability."
        "Collaborated in a small team to deliver a monolithic classifieds site."
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
      highlights = [
        "Started as a Software Engineer, later taking on coaching responsibilities for new hires."
        "Worked on various e-commerce adaptations for company customers."
        "Led the development of the Magento-Navision bridge."
        "Developed modules for the Magento e-commerce system."
        "Built bridges between Magento and several ERP systems."
        "Contributed to markup and CSS work."
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
      highlights = [
        "Led the development of the e-commerce platform and content management system."
        "Developed iterations of content management systems."
        "Created tools and workflows to optimize the development process."
        "Advocated for web standards and accessibility guidelines."
        "Developed a CSS framework to expedite site creation."
      ];
    }

    {
      name = "Firma Terje Larsen";
      location = "Gothenburg";
      position = "Self-employed";
      startDate = "2010-06";
      endDate = "2015-04";
      highlights = [
        "Contributed to the development of modules and templates for a Magento web shop."
        "Engaged in full-stack development of simpler company websites."
        "Customized and developed features for WordPress."
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
        "GitLab CI/CD"
        "Jenkins"
        "Spacelift"
      ];
    }
    {
      name = "Infrastructure as Code";
      level = "Master";
      keywords = [
        "Ansible"
        "CloudFormation"
        "Nix"
        "Terraform"
        "Terraservices"
      ];
    }
    {
      name = "Containers";
      level = "Master";
      keywords = [
        "Docker"
      ];
    }
    {
      name = "Kubernetes";
      level = "Intermediate";
      keywords = [
        "GKEE"
        "Helm"
        "OpenShift"
      ];
    }
    {
      name = "Google Cloud Platform";
      level = "Master";
      keywords = [
        "Cloud IAM"
        "Cloud Logging"
        "Cloud SQL"
        "Cloud Spanner"
        "Cloud Storage"
        "Kubernetes Engine Enterprise"
      ];
    }
    {
      name = "Amazon Web Services";
      level = "Master";
      keywords = [
        "API GateWay"
        "Aurora"
        "CloudWatch"
        "DynamoDB"
        "IAM"
        "Lambda"
        "QLDB"
        "S3"
        "SQS/SNS"
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
      name = "Artificial Intelligence";
    }
    {
      name = "Software Automation and Tools";
      keywords = [
        "Emacs"
        "Linux"
        "Nix"
        "NixOS"
      ];
    }
    {
      name = "Health and fitness";
      keywords = [
        "Cycling"
        "Family activities"
        "Hiking"
        "Meditation"
        "Team sports"
      ];
    }
  ];

  meta = {
    canonical = "https://raw.githubusercontent.com/jsonresume/resume-schema/master/schema.json";
    version = "v1.0.0";
    lastModified = "2017-12-24T15:53:00";
  };
}
