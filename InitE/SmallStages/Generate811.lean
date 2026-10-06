import Tools.GenSmallStages
import InitE.SmallStages.Oracles811
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 811 InitE.WordStages.source811.2.1 InitE.WordStages.source811.2.2 InitE.SmallStages.Oracles811.oracle811
