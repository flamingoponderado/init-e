import Tools.GenSmallStages
import InitE.SmallStages.Oracles320
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 320 InitE.WordStages.source320.2.1 InitE.WordStages.source320.2.2 InitE.SmallStages.Oracles320.oracle320
