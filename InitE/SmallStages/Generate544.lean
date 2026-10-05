import Tools.GenSmallStages
import InitE.SmallStages.Oracles544
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 544 InitE.WordStages.source544.2.1 InitE.WordStages.source544.2.2 InitE.SmallStages.Oracles544.oracle544
