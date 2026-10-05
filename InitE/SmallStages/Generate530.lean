import Tools.GenSmallStages
import InitE.SmallStages.Oracles530
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 530 InitE.WordStages.source530.2.1 InitE.WordStages.source530.2.2 InitE.SmallStages.Oracles530.oracle530
