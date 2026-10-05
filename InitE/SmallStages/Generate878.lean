import Tools.GenSmallStages
import InitE.SmallStages.Oracles878
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 878 InitE.WordStages.source878.2.1 InitE.WordStages.source878.2.2 InitE.SmallStages.Oracles878.oracle878
