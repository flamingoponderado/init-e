import Tools.GenSmallStages
import InitE.SmallStages.Oracles865
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 865 InitE.WordStages.source865.2.1 InitE.WordStages.source865.2.2 InitE.SmallStages.Oracles865.oracle865
