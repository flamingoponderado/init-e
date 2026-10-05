import Tools.GenSmallStages
import InitE.SmallStages.Oracles402
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 402 InitE.WordStages.source402.2.1 InitE.WordStages.source402.2.2 InitE.SmallStages.Oracles402.oracle402
