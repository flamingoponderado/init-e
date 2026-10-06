import Tools.GenSmallStages
import InitE.SmallStages.Oracles665
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 665 InitE.WordStages.source665.2.1 InitE.WordStages.source665.2.2 InitE.SmallStages.Oracles665.oracle665
