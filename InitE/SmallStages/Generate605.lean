import Tools.GenSmallStages
import InitE.SmallStages.Oracles605
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 605 InitE.WordStages.source605.2.1 InitE.WordStages.source605.2.2 InitE.SmallStages.Oracles605.oracle605
