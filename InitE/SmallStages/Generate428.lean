import Tools.GenSmallStages
import InitE.SmallStages.Oracles428
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 428 InitE.WordStages.source428.2.1 InitE.WordStages.source428.2.2 InitE.SmallStages.Oracles428.oracle428
