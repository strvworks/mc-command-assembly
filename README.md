# mc-command-assembly
マインクラフトのコマンドはプログラミングだ！コマンドがあればアセンブラも標準で動かせる！


1. アセンブラもどきを書く


![アセンブラ](https://lh3.googleusercontent.com/5gz1Z6PisDVc7HmYehGwekE08G96C8caiGum9__2_6qMZs5_dytvDVq6Gprj-Fp9Hemv0SkD0DH7hfG0P8K1SyTREpHKV6I2xPdWJavWZD5RPeqosXvj1DnKA4pJkGU4TjwbgsLVcZZZu-I8lOrucng7gFGJ3LQ_VnkQLrIn_Z1vEYuK4Bctsa8oA65YrWQSO5fL-Hva6yMzkF1eQ7dwQhsYzBw3c0oIPJbTiE0BcjcwkDbGyUkUKqFI6jSHlY_OenGQ0FsDu8l6Tjs4nLWXockyJQmC3bxdXE5Gb11TPNFr9k4UIqU9NZ_kOkGBD_odsksbToIC8ilSJz19oSaJH-qpgO13idqwJuNihNEQNyejlv6ZKAZ-2idpod6pwrUGbmRFGlbPTlONFpqV-zc5zJgtAF0obaGq6iXCECYi-xN432Exm44TgS_SjCCZK7LWxPliSwsOh75OBjVboijl6Or7f8S-lAlTuz-nNz_eLIomlJ4PkR0fiy_pYlNU-pPegcbzAzQ_bVepf0RrM2DNwhh4tM5nltHEsTEEYCs3MQdTOTle8hGEQosJlhXXF2vxKf_9QqLWhaU-yVMzhJ13IGcyN_AdxFtz8XPF8ESoD7IP3whOuiZxdTJ-E2Jd52B87VW5R1TNfSJ6I-HpNycd_Tzjae_n_wLgm3ERFzNr6rBV=w246-h327-no)


2. asm2mc.pyで処理する


![asm2mc.py](https://lh3.googleusercontent.com/_lX7RCL0OTW9oZ85HBSZutebmOVQbdr1NWRVwVS6k9fvLv1Sg8tfklM9dLPydt9K7oSUxq2d-QhHFUKLyo3ywpXY3VpmYApMEd6QdMdZj8LehHzBkAzJQ9BD3pQZ4akwQ6zMTuDc8Bp8jFEEaQ1B_q_vGcceL9URCujYqnBH6UwLpSViDMlaKxx78rULvx-Ad6BBMlE-_T6axj6PqpPE_dDorans4M_7ltz1oOdsAMTnGEQAOL3WHrq0TOAgC3uPmTulYNHzlqPujUNXlj81oWeyDl-mSCs-vQURaaUTPfVXyGZAfFwABnwI7kZIGRKFEsaCJxoJny6z3W_eac4OHYfdk2KEkYJw6g4fKYQM7ecLNcb4bWO3cU3-NA_6XF1jh1ioWoF8e-LVkssyjrr2C62lVyLRgYkj4I8aOJQkWSEUBjOUocuMaZFM9jSQHpez_ILca4kyKqfokj-vM6ty-jU5TUpYLjqVNT-_hcq2vJT8HWtgCWG9LbtDrqp-bMi1qWxdvhbdnt2a3isfaPB8Megx4kIekcAIx3VhdPWIUVblWFaf0U86aKAvYk0JckBylQ2_KGBfyK0eNqmVZPSF0cEYbuh6GaUpdZDRU4q7dPLVZZ36-D5cVrjXS4oy4SNXKTykFx__Y_8FF7xB-hbIk41ALySMB-2vUeUPixFwY0fG=w738-h634-no)


3. asm2mc.pyが吐いたヤバそうなコマンド列を適当な外部functionに置く


![yaba](https://lh3.googleusercontent.com/fcjkjanDvBpImyFvvdjk9txefXfR-oXI73T-Q6m3mdgp9J3dODPwAqEXyWoZizl7tGW7h_hEdA=w278-h437-no)


4. Minecraftで/function [なまえ]とかして実行するとメモリ(アーマースタンド群)に書き込まれる


![memory](https://lh3.googleusercontent.com/hkF4W9rLnbHZvsp3QTBRNpOOrMFDGKwHMiKancrKK0JHmC0QlNcFykqZiVkGOoKttCJqRB7c7mJHL-98moGntiXcqES1yMW-Jws9YaRjflD7Ryq4N7rAtabCetNRq9fDxpVSIUcDfTuiERUdv5Ex1C-V5w_1zJFiSTy1A53-M6PgYvmF-ush1U1axehJjkL62TXbv664osnU0Oxo11gkZtbFTt49M7WMng0gzxH3jLVS0gG4UDbPCnCwvC7kO3giq6NkTYfVbdqLDUTxoZvy2iZPiIjCx06gtWdFrczPrMlGsNo3YXn5EXB-JMlt4yHFxoOk3d2PMwrqKLeHDhfsCOq7bK5swaZDwFrlT_W6qx_OMdAoArPmStNQ3eTGu4sQrbYpqVEUiqfQizk_4noQPAu-MdALjm4RK6-xoS7twf41BgrLguBDNSDiAJ06SP7PX6ZsasV46JXgm9Z2V8BBu3U1eAM_PzPx_d18A4bdoXaEfLBiBeWo3CSxXVRrnOzvH7RRI-iAlPi74Li078eki-Dt85tpP0b2otyOoxoCvIRCopL3eKOeSz6dNb5Vd6e2WEzDX_IBnqN4ju18o3Pa1WOlKzYMr0SYAmQtGB9rztPh__8JbCcpTo7Szv8uOq57QbX8sKPsTpUBwGsIglslAuFeTTBrif_31H4sqGamb2tq=w958-h549-no)


5. これがノイマン型コンピュータだ。MODや拡張無しの標準機能だけでアセンブラで記述した内容を処理する。


![computer](https://lh3.googleusercontent.com/f-4fC3WvQTEyYNvEYKVdzfOumtn68acpZGOvkY2MGxWVIzo8z09VTRWbydmE-txRzMKKTbCweNjxp_bBArbpuK6-rjxJq6S3M-FimfaFQPb-a8ClwxhcPHPcsoo3wehysNxARlASosQCX8cmLJT0DZt4boxU1dKWzrYWPghDCU_k1dZfAma8QghwIrLAV0zxUjhC85UvP72_LyBLmkfY7MtmjVDyRMhNoZBUuVH-vY-It1S-P-jNru0irpsY8wLKNSaROdA6H9ifH4qlXY99viNfhE9YbrXAs8KmTWl3qP0BW-qpZynxQUUieCRQnylK5dswLiEI0bYCWyvd5Xzx98gAC2mOwet1N4a5N71NDHQojG9DmZakJRot3CY-SP75HRMzDhXivM-WEoXU8s--SBqd8cwBy3KX6wirOhVNK6Nzfv549o7ovd_DMJGjmtPbSE2CcRSpHdCgNePXfFrub4FpVT98dnwnnSb3DJH6XrijH3acYtxfRUgzn5sETCHNVHXf384aag6XYCDLW8rvR_EynQiFfAkHddTFzQD_FEM9CzzrfUD4a_-a42bQdo2Y4d6E9Kkbv2OGBQI6ooHVi5oMoSl_gM6OeV99p4Sz2bDb58yZowKwu8rCYBPcvVRNY2hqe20JrnfyuJzeVXkBuO606H1JD8QMmYvpxjif5Hj2=w958-h549-no)
