import Tools.GenSmallStages
import InitE.SmallStages.Oracles803
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 803 InitE.WordStages.source803.2.1 InitE.WordStages.source803.2.2 InitE.SmallStages.Oracles803.oracle803
