import Tools.GenSmallStages
import InitE.SmallStages.Oracles889
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 889 InitE.WordStages.source889.2.1 InitE.WordStages.source889.2.2 InitE.SmallStages.Oracles889.oracle889
