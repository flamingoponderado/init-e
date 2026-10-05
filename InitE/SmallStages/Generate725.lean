import Tools.GenSmallStages
import InitE.SmallStages.Oracles725
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 725 InitE.WordStages.source725.2.1 InitE.WordStages.source725.2.2 InitE.SmallStages.Oracles725.oracle725
