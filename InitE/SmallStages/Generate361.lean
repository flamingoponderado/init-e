import Tools.GenSmallStages
import InitE.SmallStages.Oracles361
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 361 InitE.WordStages.source361.2.1 InitE.WordStages.source361.2.2 InitE.SmallStages.Oracles361.oracle361
