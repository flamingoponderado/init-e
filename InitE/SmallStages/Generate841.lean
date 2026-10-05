import Tools.GenSmallStages
import InitE.SmallStages.Oracles841
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 841 InitE.WordStages.source841.2.1 InitE.WordStages.source841.2.2 InitE.SmallStages.Oracles841.oracle841
