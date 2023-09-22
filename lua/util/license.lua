local license = {}

local BSD3ClauseTmpl = 'Copyright (c) <YEAR> <COPYRIGHT HOLDER>. All rights reserved.\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\n1. Redistributions of source code must retain the above copyright\nnotice, this list of conditions and the following disclaimer.\n\n2. Redistributions in binary form must reproduce the above copyright\nnotice, this list of conditions and the following disclaimer in the\ndocumentation and/or other materials provided with the distribution.\n\n3. Neither the name of the copyright holder nor the names of its\ncontributors may be used to endorse or promote products derived from\nthis software without specific prior written permission.\n\nTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\n“AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\nLIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\nA PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\nHOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\nSPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\nLIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n'

function license.BSD3Clause(year, author)
    local content = BSD3ClauseTmpl:gsub('<YEAR>', year):gsub('<COPYRIGHT HOLDER>', author)
    local lines = vim.split(content, '\n')
    return lines
end

return license
