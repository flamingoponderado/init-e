import Tools.GenSmallStages
import InitE.SmallStages.Oracles873
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 873 InitE.WordStages.source873.2.1 InitE.WordStages.source873.2.2 InitE.SmallStages.Oracles873.oracle873
