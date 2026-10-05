import Tools.GenSmallStages
import InitE.SmallStages.Oracles543
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 543 InitE.WordStages.source543.2.1 InitE.WordStages.source543.2.2 InitE.SmallStages.Oracles543.oracle543
