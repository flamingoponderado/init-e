import Tools.GenSmallStages
import InitE.SmallStages.Oracles603
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 603 InitE.WordStages.source603.2.1 InitE.WordStages.source603.2.2 InitE.SmallStages.Oracles603.oracle603
