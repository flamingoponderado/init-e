import Tools.GenSmallStages
import InitE.SmallStages.Oracles710
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 710 InitE.WordStages.source710.2.1 InitE.WordStages.source710.2.2 InitE.SmallStages.Oracles710.oracle710
