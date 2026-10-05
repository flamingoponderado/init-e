import Tools.GenSmallStages
import InitE.SmallStages.Oracles333
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 333 InitE.WordStages.source333.2.1 InitE.WordStages.source333.2.2 InitE.SmallStages.Oracles333.oracle333
