import Tools.GenSmallStages
import InitE.SmallStages.Oracles447
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 447 InitE.WordStages.source447.2.1 InitE.WordStages.source447.2.2 InitE.SmallStages.Oracles447.oracle447
