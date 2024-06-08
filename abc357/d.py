def repeated_number_mod(N_str):
    MOD = 998244353
    
    # 数の長さ
    length = len(N_str)
    N = int(N_str)
    
    # 幾何級数の和を (10^length - 1) / 9, これは mod 演算で処理
    power_of_ten = pow(10, length, MOD)  # 10^length % MOD
    sum_series = (power_of_ten - 1) * pow(9, MOD - 2, MOD) % MOD
    
    # 繰り返されるブロックとしての値
    repeated_block_value = int(N_str) * sum_series % MOD
    
    # 繰り返し全体の数として計算
    result = repeated_block_value * N % MOD
    
    return result

# 入力を取得
N_str = input().strip()
print(repeated_number_mod(N_str))
