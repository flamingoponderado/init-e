import Tools.GenSmallStages
import InitE.SmallStages.Oracles828
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 828 InitE.WordStages.source828.2.1 InitE.WordStages.source828.2.2 InitE.SmallStages.Oracles828.oracle828
