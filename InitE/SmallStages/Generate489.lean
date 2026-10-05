import Tools.GenSmallStages
import InitE.SmallStages.Oracles489
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 489 InitE.WordStages.source489.2.1 InitE.WordStages.source489.2.2 InitE.SmallStages.Oracles489.oracle489
