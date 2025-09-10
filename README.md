# Counter 智能合约项目

基于 Foundry 框架开发的 Counter 智能合约，展示了完整的开发、测试、优化和部署流程。

## 项目特色

- ⚡ **高性能优化**：通过多轮优化，Gas 消耗降低 66%
- 🧪 **完整测试**：包含单元测试、模糊测试和边界测试
- 📊 **详细文档**：提供理论知识回顾和 Gas 优化分析报告
- 🔧 **最佳实践**：展示 Foundry 工具链的完整使用

## 合约功能

Counter 合约提供以下功能：
- `increment()` - 数值递增
- `decrement()` - 数值递减（带下溢保护）
- `setNumber()` - 设置指定数值
- `number()` - 查询当前数值

## 快速开始

### 安装依赖
```shell
forge install
```

### 编译合约
```shell
forge build
```

### 运行测试
```shell
forge test -vvv          # 详细测试输出
forge test --gas-report  # 查看 Gas 消耗报告
```

### 本地部署
```shell
# 启动本地节点
anvil

# 部署合约
forge script script/Counter.s.sol --rpc-url local --broadcast --private-key <PRIVATE_KEY>
```

### 合约交互
```shell
# 调用函数（修改状态）
cast send <CONTRACT_ADDRESS> "increment()" --rpc-url local --private-key <PRIVATE_KEY>

# 查询状态
cast call <CONTRACT_ADDRESS> "number()(uint256)" --rpc-url local
```

## 项目结构

```
├── src/
│   └── Counter.sol              # 主合约
├── test/
│   └── Counter.t.sol            # 测试文件
├── script/
│   └── Counter.s.sol            # 部署脚本
├── Gas优化分析报告.md            # 性能优化报告
├── 理论知识回顾.md               # Foundry 理论知识
└── foundry.toml                 # 项目配置
```

## Gas 优化成果

| 函数 | 优化前 | 优化后 | 节省 |
|-----|-------|-------|------|
| `increment()` | 28,827 | 11,312 | 60.7% |
| `decrement()` | 30,312 | 11,428 | 62.3% |
| `setNumber()` | 29,022 | 11,211 | 61.4% |

## 文档

- [理论知识回顾](./理论知识回顾.md) - Foundry 框架完整介绍
- [Gas 优化分析报告](./Gas优化分析报告.md) - 详细的性能优化过程
