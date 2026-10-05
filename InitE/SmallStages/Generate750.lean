import Tools.GenSmallStages
import InitE.SmallStages.Oracles750
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 750 InitE.WordStages.source750.2.1 InitE.WordStages.source750.2.2 InitE.SmallStages.Oracles750.oracle750
