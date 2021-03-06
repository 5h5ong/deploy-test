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
        <div className={styles.small}>
          무중단 배포 완성! 진짜루 자연스럽게 배포됩니다!!
        </div>
        <Component />
      </div>
    </div>
  );
};

export default Home;
