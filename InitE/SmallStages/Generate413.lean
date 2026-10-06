import Tools.GenSmallStages
import InitE.SmallStages.Oracles413
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 413 InitE.WordStages.source413.2.1 InitE.WordStages.source413.2.2 InitE.SmallStages.Oracles413.oracle413
