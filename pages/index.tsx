import type { NextPage } from "next";
import Head from "next/head";
import Image from "next/image";
import Component from "../components/Component";
import styles from "../styles/Home.module.css";

const Home: NextPage = () => {
  return (
    <div className={styles.container}>
      <div className={styles.main}>
        <div className={styles.large}>hello!</div>
        <div className={styles.medium}>Welcome to my new projects.</div>
        <div className={styles.small}>It&apos;s just simple test.</div>
        <div className={styles.small}>Docker! Is changed?</div>
        <Component />
      </div>
    </div>
  );
};

export default Home;
