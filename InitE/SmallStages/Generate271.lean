import Tools.GenSmallStages
import InitE.SmallStages.Oracles271
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 271 InitE.WordStages.source271.2.1 InitE.WordStages.source271.2.2 InitE.SmallStages.Oracles271.oracle271
