import Tools.GenSmallStages
import InitE.SmallStages.Oracles542
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 542 InitE.WordStages.source542.2.1 InitE.WordStages.source542.2.2 InitE.SmallStages.Oracles542.oracle542
