import { useState } from "react";
import "./index.css";

function App() {
  const [darkMode, setDarkMode] = useState(false);

  return (
    <div className="app" data-theme={darkMode ? "dark" : "light"}>
      <nav className="navbar">
        <div className="nav-container">
          <a href="#home" className="nav-logo">
            Lona Hans<span>.</span>
          </a>

          <div className="nav-links">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#projects">Projects</a>
            <a href="#technologies">Technologies</a>
            <a href="#contact">Contact</a>

            <button
              className="theme-btn"
              onClick={() => setDarkMode(!darkMode)}
            >
              {darkMode ? "Light" : "Dark"}
            </button>
          </div>
        </div>
      </nav>

      <section className="hero" id="home">
        <div className="hero-content">
          <p className="hero-greeting">Hi there, I'm</p>
          <h1 className="hero-name">Lona Hans</h1>
          <h2 className="hero-role">Final Year Computer Science Student</h2>

          <p className="hero-description">
            I build clean, beautiful web applications and love turning ideas
            into real products.
          </p>

          <div className="hero-buttons">
            <a href="#projects" className="btn btn-primary">
              View Projects
            </a>
            <a href="#contact" className="btn btn-secondary">
              Let’s Talk
            </a>
          </div>
        </div>

        <div className="hero-card">
          <div className="profile-circle">💻</div>
          <h3>Software Developer</h3>
          <p> Java • Web Development</p>
        </div>
      </section>

      <section className="section" id="about">
        <div className="container">
          <h2 className="section-title">
            About <span>Me</span>
          </h2>
          <p className="section-subtitle">A little bit about who I am</p>

          <div className="about-grid">
            <div className="about-image">
              <img src="/me.jpeg" alt="Profile photo" />
            </div>

            <div className="about-text">
              <h3>Who am I?</h3>
              <p>
                I'm a passionate developer based in <strong>Pretoria</strong>{" "}
                with a love for building things that live on the internet.
              </p>

              <p>
                I enjoy writing clean, maintainable code and creating web
                experiences that feel fast, simple, and beautiful.
              </p>

              <a href="#contact" className="btn btn-primary">
                Let’s Talk
              </a>
            </div>
          </div>
        </div>
      </section>

      <section className="section section-dark" id="projects">
  <div className="container">

    <h2 className="section-title">
      My <span>Projects</span>
    </h2>

    <p className="section-subtitle">
      Things I've built that I'm proud of
    </p>

    <div className="projects-grid">

      <article className="project-card">

        <div className="project-image">
          <img
            src="/lms.jpg"
            alt="Learner Management Web App"
          />
        </div>

        <div className="project-info">

          <h3>Learner Management Web App</h3>

          <p>
            A simple web application to manage a users account
            with real-time updates and user-friendly design.
          </p>

          <div className="project-tags">
            <span className="tag">Java</span>
            <span className="tag">HTML</span>
          </div>

          <a
            href="#projects"
            className="project-link"
          >
            View Project
          </a>

        </div>
      </article>

      <article className="project-card">

        <div className="project-image">
          <img
            src="/fieldAgent.png"
            alt="Field Agent Management Web App"
          />
        </div>

        <div className="project-info">

          <h3>Field Agent Web App</h3>

          <p>
            A simple web application to manage field agents
            with real-time updates, security and user-friendly design.
          </p>

          <div className="project-tags">
            <span className="tag">Java</span>
            <span className="tag">HTML</span>
          </div>

          <a
            href="http://localhost:8080/FieldAgentWebApp/"
            className="project-link"
          >
            View Project
          </a>

        </div>
      </article>

    </div>
  </div>
</section>

      <section className="section" id="technologies">
        <div className="container">
          <h2 className="section-title">
            My <span>Technologies</span>
          </h2>
          <p className="section-subtitle">Tools and languages I work with</p>

          <div className="tech-groups">
            <div className="tech-badge">HTML5</div>
            <div className="tech-badge">CSS3</div>
            <div className="tech-badge">JavaScript</div>
            <div className="tech-badge">React</div>
            <div className="tech-badge">Java</div>
            <div className="tech-badge">GitHub</div>
          </div>
        </div>
      </section>

      <section className="section section-dark" id="contact">
        <div className="container">
          <h2 className="section-title">
            Contact <span>Me</span>
          </h2>
          <p className="section-subtitle">Let's build something together</p>

          <div className="contact-card">
            <h4>Email</h4>
            <a href="https://mail.google.com/mail/?view=cm&to=lona.hans16@gmail.com">
              lona.hans16@gmail.com
            </a>
          </div>
        </div>
      </section>
    </div>
  );
}

export default App;