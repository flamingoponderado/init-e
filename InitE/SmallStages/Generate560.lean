import Tools.GenSmallStages
import InitE.SmallStages.Oracles560
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 560 InitE.WordStages.source560.2.1 InitE.WordStages.source560.2.2 InitE.SmallStages.Oracles560.oracle560
