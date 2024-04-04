import clsx from "clsx";
import Link from "@docusaurus/Link";
import useDocusaurusContext from "@docusaurus/useDocusaurusContext";
import Layout from "@theme/Layout";
import HomepageFeatures from "@site/src/components/HomepageFeatures";

import Heading from "@theme/Heading";
import styles from "./index.module.css";

const textContent = {
  customTests: `
  Write Pester tests that encode your organization's business and security policies.<br/><br/>
  <strong>Apply modern DevSecOps practices</strong> and continously monitor critical aspects of your Microsoft cloud.
  `,

  maesterReport: `
Get a quick snapshot of your tenant's security posture with the report generated by Maester.<br/><br/>
<strong>The interactive click-through</strong> report let's you drill down to the details of
each test.
<br/><br/>`,
  quickFix: `
Test details include direct links to the admins portals.<br/><br/>
<strong>Jump straight</strong> into the conditional access policy that needs to be fixed or the group that needs to be reviewed.
<br/><br/>`,
  eidsca: `
Maester includes over 40+ out of the box tests from <a href="/docs/tests/eidsca/">Entra ID Security Config Analyzer (EIDSCA).</a><br/><br/>
EIDSCA is a part of the <strong>Microsoft Entra ID - Attack and Defense Playbook</strong> and is a collection of common attack scenarios on Microsoft Entra ID and how they can be mitigated.
<br/><br/>`,
  emailAlert: `
Set up email alerts to be delivered to your inbox with a
summary of the test results.
<br/><br/>
<strong>Get notified</strong> when a change is introduced in your Microsoft 365 tenant
that affects the security configuration.`,
  azureDevOps: `
Maester can be integrated with Azure DevOps Pipelines and scheduled to be run daily
and when changes are introduced in your Microsoft 365 tenant.
<br/><br/>
<strong>Follow the step-by-step guide</strong> in the Maester docs to set up
an automation account with Workload Identify Federation.`,
  gitHub: `
Integrate Maester with GitHub Actions to continously monitor your tenant configuration.
<br/><br/>
<strong>Build an archive history</strong> of Maester test runs against your tenant with the native
workflow integration in Maester.
<br/><br/>
<strong>Use Workload Identify Federation</strong> for your automation account to connect to Microsoft Graph (no more secrets or credential rotation!).`,
  codeExample: `
import React from 'react';
import {Text, View} from 'react-native';
import {Header} from './Header';
import {heading} from './Typography';

const WelcomeScreen = () => (
  <View>
    <Header title="Welcome to React Native"/>
    <Text style={heading}>Step One</Text>
    <Text>
      Edit App.js to change this screen and turn it
      into your app.
    </Text>
    <Text style={heading}>See Your Changes</Text>
    <Text>
      Press Cmd + R inside the simulator to reload
      your app’s code.
    </Text>
    <Text style={heading}>Debug</Text>
    <Text>
      Press Cmd + M or Shake your device to open the
      React Native Debug Menu.
    </Text>
    <Text style={heading}>Learn</Text>
    <Text>
      Read the docs to discover what to do next:
    </Text>
   </View>
);
  `,
  forEveryone: `
React Native lets you create truly native apps and doesn't compromise your users' experiences.
It provides a core set of platform agnostic native components like <code>View</code>, <code>Text</code>, and <code>Image</code>
that map directly to the platform’s native UI building blocks.
  `,
  crossPlatform: `
React components wrap existing native code and interact with native APIs via
React’s declarative UI paradigm and JavaScript. This enables native app development
for whole new teams of developers, and can let existing native teams work much faster.
  `,
  fastRefresh: `
<strong>See your changes as soon as you save.</strong> With the power of JavaScript,
React Native lets you iterate at lightning speed. No more waiting for native builds to finish.
Save, see, repeat.
  `,
  talks: `
Members of the React Native team frequently speak at various conferences.
<br/><br/>
You can follow the latest news from the React Native team on Twitter
  `,
};

function Heading2({ text }) {
  return <h2 className="Heading">{text}</h2>;
}

function HomepageHeader() {
  const { siteConfig } = useDocusaurusContext();
  return (
    <header className={clsx("hero hero--primary", styles.heroBanner)}>
      <div className="container">
        <div class="row">
          <div class="col col--6">
            <Heading as="h1" className="hero__title">
              {siteConfig.title}
            </Heading>
            <p className="hero__subtitle">{siteConfig.tagline}</p>
            <div className={styles.buttons}>
              <Link
                className="button button--secondary button--lg"
                to="/docs/intro"
              >
                Get Started → 🔥
              </Link>
            </div>
          </div>
          <div class="col col--6">
            <img
              src="img/maester-demo.gif"
              class="rounded-corners"
              alt="Maester Demo"
              width="500"
            />
          </div>
        </div>
      </div>
    </header>
  );
}

export function Section({
  element = "section",
  children,
  className,
  background = "light",
}) {
  const El = element;
  return (
    <El
      className={
        className
          ? `Section ${className} ${background}`
          : `Section ${background}`
      }
    >
      {children}
    </El>
  );
}

function TextColumn({ title, text, moreContent }) {
  return (
    <div className="RightText">
      <Heading2 text={title} />
      <div dangerouslySetInnerHTML={{ __html: text }} />
      {moreContent}
    </div>
  );
}

function TwoColumns({ columnOne, columnTwo, reverse }) {
  return (
    <div className={`TwoColumns ${reverse ? "reverse" : ""}`}>
      <div className={`column first ${reverse ? "right" : "left"}`}>
        {columnOne}
      </div>
      <div className={`column last ${reverse ? "left" : "right"}`}>
        {columnTwo}
      </div>
    </div>
  );
}

function CustomTests() {
  return (
    <Section className="CrossPlatform" background="tint">
      <TwoColumns
        reverse
        columnOne={
          <TextColumn
            title="Security as Code (SaC)"
            text={textContent.customTests}
          />
        }
        columnTwo={
          <img
            className="FeatureImageLeft"
            alt="Code snippet for a custom test"
            src="img/home/custom-test.png"
          />
        }
      />
    </Section>
  );
}

function MaesterReport() {
  return (
    <Section className="CrossPlatform">
      <TwoColumns
        columnOne={
          <TextColumn
            title="🔥 Maester Test Reports"
            text={textContent.maesterReport}
          />
        }
        columnTwo={
          <img className="FeatureImageRight"
          alt="Maester summary report" src="img/home/maester-report.png" />
        }
      />
    </Section>
  );
}

function GitHub() {
  return (
    <Section className="CrossPlatform LeftImage" background="tint">
      <TwoColumns
        reverse
        columnOne={
          <TextColumn title="Maester ❤️ GitHub" text={textContent.gitHub} />
        }
        columnTwo={
          <img
            className="FeatureImageLeft"
            alt="GitHub reports"
            src="img/home/github-maester-report.png"
          />
        }
      />
    </Section>
  );
}

function AzureDevOps() {
  return (
    <Section className="CrossPlatform">
      <TwoColumns
        columnOne={
          <TextColumn
            title="Maester 💛 Azure DevOps"
            text={textContent.azureDevOps}
          />
        }
        columnTwo={
          <img className="FeatureImageRight"
            alt="Azure DevOps Screenshot"
            src="img/home/azure-devops-maester-report.png"
          />
        }
      />
    </Section>
  );
}

function EmailAlert() {
  return (
    <Section className="CrossPlatform" background="tint">
      <TwoColumns
        reverse
        columnOne={
          <TextColumn title="Email Alerts" text={textContent.emailAlert} />
        }
        columnTwo={
          <img
            className="FeatureImageLeft"
            alt="Outlook email alerts"
            src="img/home/email-alert-test-results.png"
          />
        }
      />
    </Section>
  );
}

function Eidsca() {
  return (
    <Section className="CrossPlatform">
      <TwoColumns
        columnOne={
          <TextColumn title="40+ EIDSCA Tests" text={textContent.eidsca} />
        }
        columnTwo={
          <img className="FeatureImageRight"
            alt="Screenshot of an EIDSCA test result"
            src="img/home/maester-report-eidsca.png"
          />
        }
      />
    </Section>
  );
}

function QuickRemediation() {
  return (
    <Section className="CrossPlatform" background="tint">
      <TwoColumns
        reverse
        columnOne={
          <TextColumn title="Quick remediation" text={textContent.quickFix} />
        }
        columnTwo={
          <img
            alt="Screenshot of an EIDSCA test result"
            src="img/home/maester-report-detail.png"
          />
        }
      />
    </Section>
  );
}

export default function Home() {
  const { siteConfig } = useDocusaurusContext();
  return (
    <Layout
      title={`${siteConfig.title}`}
      description="Your Microsoft Security test automation framework!"
    >
      <HomepageHeader />
      <main>
        <HomepageFeatures />
      </main>
      <CustomTests />
      <MaesterReport />
      <QuickRemediation />
      <Eidsca />
      <GitHub />
      <AzureDevOps />
      <EmailAlert />
    </Layout>
  );
}
