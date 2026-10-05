import Tools.GenSmallStages
import InitE.SmallStages.Oracles822
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 822 InitE.WordStages.source822.2.1 InitE.WordStages.source822.2.2 InitE.SmallStages.Oracles822.oracle822
