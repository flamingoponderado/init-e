import Tools.GenSmallStages
import InitE.SmallStages.Oracles726
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 726 InitE.WordStages.source726.2.1 InitE.WordStages.source726.2.2 InitE.SmallStages.Oracles726.oracle726
