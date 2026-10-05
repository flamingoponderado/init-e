import Tools.GenSmallStages
import InitE.SmallStages.Oracles335
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 335 InitE.WordStages.source335.2.1 InitE.WordStages.source335.2.2 InitE.SmallStages.Oracles335.oracle335
