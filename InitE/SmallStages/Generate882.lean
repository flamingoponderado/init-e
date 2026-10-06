import Tools.GenSmallStages
import InitE.SmallStages.Oracles882
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 882 InitE.WordStages.source882.2.1 InitE.WordStages.source882.2.2 InitE.SmallStages.Oracles882.oracle882
