import Tools.GenSmallStages
import InitE.SmallStages.Oracles876
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 876 InitE.WordStages.source876.2.1 InitE.WordStages.source876.2.2 InitE.SmallStages.Oracles876.oracle876
