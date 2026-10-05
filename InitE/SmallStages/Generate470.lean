import Tools.GenSmallStages
import InitE.SmallStages.Oracles470
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 470 InitE.WordStages.source470.2.1 InitE.WordStages.source470.2.2 InitE.SmallStages.Oracles470.oracle470
