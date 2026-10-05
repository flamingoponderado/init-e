import Tools.GenSmallStages
import InitE.SmallStages.Oracles691
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 691 InitE.WordStages.source691.2.1 InitE.WordStages.source691.2.2 InitE.SmallStages.Oracles691.oracle691
