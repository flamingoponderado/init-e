import Tools.GenSmallStages
import InitE.SmallStages.Oracles609
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 609 InitE.WordStages.source609.2.1 InitE.WordStages.source609.2.2 InitE.SmallStages.Oracles609.oracle609
