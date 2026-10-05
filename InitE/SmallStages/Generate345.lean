import Tools.GenSmallStages
import InitE.SmallStages.Oracles345
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 345 InitE.WordStages.source345.2.1 InitE.WordStages.source345.2.2 InitE.SmallStages.Oracles345.oracle345
