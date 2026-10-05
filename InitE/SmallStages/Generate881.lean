import Tools.GenSmallStages
import InitE.SmallStages.Oracles881
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 881 InitE.WordStages.source881.2.1 InitE.WordStages.source881.2.2 InitE.SmallStages.Oracles881.oracle881
