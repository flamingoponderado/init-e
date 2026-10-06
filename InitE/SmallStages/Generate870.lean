import Tools.GenSmallStages
import InitE.SmallStages.Oracles870
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 870 InitE.WordStages.source870.2.1 InitE.WordStages.source870.2.2 InitE.SmallStages.Oracles870.oracle870
