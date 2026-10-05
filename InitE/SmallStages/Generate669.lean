import Tools.GenSmallStages
import InitE.SmallStages.Oracles669
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 669 InitE.WordStages.source669.2.1 InitE.WordStages.source669.2.2 InitE.SmallStages.Oracles669.oracle669
