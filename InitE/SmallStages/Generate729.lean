import Tools.GenSmallStages
import InitE.SmallStages.Oracles729
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 729 InitE.WordStages.source729.2.1 InitE.WordStages.source729.2.2 InitE.SmallStages.Oracles729.oracle729
