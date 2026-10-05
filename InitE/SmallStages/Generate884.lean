import Tools.GenSmallStages
import InitE.SmallStages.Oracles884
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 884 InitE.WordStages.source884.2.1 InitE.WordStages.source884.2.2 InitE.SmallStages.Oracles884.oracle884
