import Tools.GenSmallStages
import InitE.SmallStages.Oracles246
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 246 InitE.WordStages.source246.2.1 InitE.WordStages.source246.2.2 InitE.SmallStages.Oracles246.oracle246
