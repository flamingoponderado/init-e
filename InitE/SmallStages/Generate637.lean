import Tools.GenSmallStages
import InitE.SmallStages.Oracles637
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 637 InitE.WordStages.source637.2.1 InitE.WordStages.source637.2.2 InitE.SmallStages.Oracles637.oracle637
