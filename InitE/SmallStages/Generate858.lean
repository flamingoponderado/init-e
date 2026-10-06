import Tools.GenSmallStages
import InitE.SmallStages.Oracles858
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 858 InitE.WordStages.source858.2.1 InitE.WordStages.source858.2.2 InitE.SmallStages.Oracles858.oracle858
