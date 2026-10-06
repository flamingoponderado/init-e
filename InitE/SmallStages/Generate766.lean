import Tools.GenSmallStages
import InitE.SmallStages.Oracles766
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 766 InitE.WordStages.source766.2.1 InitE.WordStages.source766.2.2 InitE.SmallStages.Oracles766.oracle766
