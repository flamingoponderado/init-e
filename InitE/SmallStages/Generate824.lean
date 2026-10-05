import Tools.GenSmallStages
import InitE.SmallStages.Oracles824
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 824 InitE.WordStages.source824.2.1 InitE.WordStages.source824.2.2 InitE.SmallStages.Oracles824.oracle824
