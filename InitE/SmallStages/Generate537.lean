import Tools.GenSmallStages
import InitE.SmallStages.Oracles537
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 537 InitE.WordStages.source537.2.1 InitE.WordStages.source537.2.2 InitE.SmallStages.Oracles537.oracle537
