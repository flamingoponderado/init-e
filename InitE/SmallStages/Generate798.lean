import Tools.GenSmallStages
import InitE.SmallStages.Oracles798
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 798 InitE.WordStages.source798.2.1 InitE.WordStages.source798.2.2 InitE.SmallStages.Oracles798.oracle798
