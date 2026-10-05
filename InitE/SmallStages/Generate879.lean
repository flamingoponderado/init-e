import Tools.GenSmallStages
import InitE.SmallStages.Oracles879
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 879 InitE.WordStages.source879.2.1 InitE.WordStages.source879.2.2 InitE.SmallStages.Oracles879.oracle879
